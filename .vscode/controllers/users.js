import { v4 as uuidv4 } from 'uuid';

let users = [ ]

const getUsers = (req, res) => {
    
    res.send(users);
}

const postUsers =  (req, res) => {

    const user = req.body;

    users.push({ ...user, id: uuidv4() });

    res.send(`User with the name ${user.firstName} added to the Database!`);
}

const getUser = (req, res) => {
    const {id} = req.params;

    const foundUser = users.find((user) => user.id == id);

    res.send(foundUser);

}

const deleteUsers = (req, res) => {
    const {id} = req.params;

    users = users.filter((user) => user.id !== id);

    res.send(`User with the id ${id} is deleted from the databse.`)
}

const updateUsers = (req, res) => {
    const {id} = req.params;
    
    const { firstName, lastName,  age} =req.body;

    const user = users.find((user) => user.id == id);

    if(firstName) user.firstName = firstName;
    if(lastName) user.lastName = lastName;
    if(age) user.age = age;

    res.send(`User with the ${id} has been updated`);


}

